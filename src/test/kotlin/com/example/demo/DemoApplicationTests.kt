package com.example.demo

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest
import org.junit.jupiter.api.Assertions.assertEquals

@SpringBootTest
class DemoApplicationTests {

    @Test
    fun testIncrement() {
        // Given
        val number = 5

        // When
        val result = number + 2

        // Then
        assertEquals(6, result)
    }

}
