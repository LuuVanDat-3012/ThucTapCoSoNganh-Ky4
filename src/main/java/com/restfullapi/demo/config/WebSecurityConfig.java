package com.restfullapi.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.authentication.rememberme.InMemoryTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

@Configuration
@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = false)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService jwtUserDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
//    @Bean
//    public HttpSessionEventPublisher httpSessionEventPublisher() {
//        return new HttpSessionEventPublisher();
//    }


//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        // configure AuthenticationManager so that it knows from where to load
//        // user for matching credentials
//        // Use BCryptPasswordEncoder
//        auth.userDetailsService(jwtUserDetailsService).passwordEncoder(passwordEncoder());
//    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(jwtUserDetailsService).passwordEncoder(passwordEncoder());
    }


    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        AuthenticationSuccessHandler successHandler = new AuthenticationSuccessWithSessionHandler();
        AuthenticationFailureHandler auFail = new AuthenticationFailed();
        httpSecurity.csrf().disable();

        httpSecurity.authorizeRequests().antMatchers("/css/**", "/JavaScript/**", "/images/**").permitAll();
        httpSecurity.authorizeRequests().antMatchers(HttpMethod.GET, "/user").access("hasAnyRole('ROLE_ADMIN')");

//        httpSecurity.authorizeRequests().anyRequest().permitAll();
        httpSecurity.formLogin().
                loginPage("/login")
//                .usernameParameter("username")
//                .passwordParameter("password")
                .loginProcessingUrl("/perform-login")
                .successHandler(successHandler)
                .failureHandler(auFail)
                .permitAll();
        httpSecurity
                .exceptionHandling()
                .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED));
        httpSecurity.authorizeRequests().anyRequest().permitAll();

        httpSecurity.sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.ALWAYS);
//        httpSecurity.logout()
//                .logoutUrl("/perform-logout")
//                .logoutSuccessHandler(successHandler)
//                .logoutSuccessUrl("/getPhone")
//                .deleteCookies("JSESSIONID", "token");
//        httpSecurity.authorizeRequests().and() //
//                .rememberMe().tokenRepository(this.persistentTokenRepository()) //
//                .tokenValiditySeconds(1 * 24 * 60 * 60);

        // Add a filter to validate the tokens with every request

    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        InMemoryTokenRepositoryImpl memory = new InMemoryTokenRepositoryImpl(); // Ta lưu tạm remember me trong memory (RAM). Nếu cần mình có thể lưu trong database
        return memory;
    }
}