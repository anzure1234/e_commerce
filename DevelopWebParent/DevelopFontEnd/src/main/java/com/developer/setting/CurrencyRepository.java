package com.developer.setting;

import org.springframework.data.repository.CrudRepository;

import com.developer.common.entity.Currency;

public interface CurrencyRepository extends CrudRepository<Currency, Integer> {

}
