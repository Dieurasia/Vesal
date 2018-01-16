package com.thoughtWorks.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 马欢欢
 * @date 18-1-16
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
    private Integer cId;
    private Integer customId;
    private Integer modelId;
}
