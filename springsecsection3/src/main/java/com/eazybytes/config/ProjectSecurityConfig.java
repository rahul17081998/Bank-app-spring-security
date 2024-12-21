package com.eazybytes.config;

import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.sql.DataSource;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
public class ProjectSecurityConfig {


    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        /**
         * Below is the custom security configurations
         */

        http.csrf(csrf->csrf.disable())
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers("/myAccount","/myBalance","/myCards","/myLoans").authenticated()
                        .requestMatchers("/contact", "/notices", "/register").permitAll());
        http.formLogin(withDefaults());
        http.httpBasic(withDefaults());
        return http.build();
    }

    /**
     * NoOpPasswordEncoder is not recommended for production usage
     * use only for non-prod
     *
     * @return PasswordEncoder
     */
    @Bean
    public PasswordEncoder passwordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }
}


//    @Bean
//    public InMemoryUserDetailsManager userDetailsService(){
//
//        /**
//         * Approach 1: where we use withDefaultPasswordEncoder() method while creating the user details
//         */
//
////        UserDetails admin =User.withDefaultPasswordEncoder()
////                .username("admin")
////                .password("12345")
////                .authorities("admin")
////                .build();
////        UserDetails user =User.withDefaultPasswordEncoder()
////                .username("user")
////                .password("12345")
////                .authorities("read")
////                .build();
////        return new InMemoryUserDetailsManager(admin,user);
//
//        /**
//         * Approach 2: where we use NoOpPasswordEncoder bean while creating the user details
//         */
//
//        UserDetails admin =User.withUsername("admin")
//                .password("12345")
//                .authorities("admin")
//                .build();
//        UserDetails user =User.withUsername("user")
//                .password("12345")
//                .authorities("read")
//                .build();
//        return new InMemoryUserDetailsManager(admin,user);
//    }

//    @Bean
//    public UserDetailsService userDetailsService(DataSource dataSource){
//        return new JdbcUserDetailsManager(dataSource);
//    }

