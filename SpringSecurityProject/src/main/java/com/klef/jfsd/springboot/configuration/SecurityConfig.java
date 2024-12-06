package com.klef.jfsd.springboot.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig 
{
    // UserDetailsService Bean to handle user authentication
    @Bean
    public UserDetailsService userDetailsService() 
    {
        return username -> {
            if ("klu".equals(username)) {
                return User.withUsername("klu")
                        .password(passwordEncoder().encode("klu"))
                        .roles("USER") // Role for user
                        .build();
            } else if ("admin".equals(username)) {
                return User.withUsername("admin")
                        .password(passwordEncoder().encode("admin"))
                        .roles("ADMIN") // Role for admin
                        .build();
            } else {
                throw new UsernameNotFoundException("User not found: " + username);
            }
        };
    }

    // Password Encoder bean to encode passwords
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // Configuring HTTP Security
    protected void configure(HttpSecurity http) throws Exception 
    {
        http.authorizeHttpRequests(requests -> requests
                        .requestMatchers("/user").hasRole("USER") // 'USER' role can access /user
                        .requestMatchers("/admin").hasRole("ADMIN") // 'ADMIN' role can access /admin
                        .anyRequest().authenticated())
                .formLogin(login -> login
                        .permitAll())
                .logout(logout -> logout
                        .permitAll()); // Allow users to log out
    }
}
