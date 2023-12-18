package com.developer.comment;

import java.io.IOException;

import com.developer.comment.entity.Comments;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

public class CommentsSerializer extends JsonSerializer<Comments> {

    @Override
    public void serialize(Comments value, JsonGenerator gen, SerializerProvider serializers) throws IOException {
        gen.writeStartObject();
        gen.writeNumberField("id", value.getId());
        gen.writeStringField("content", value.getContent());
        gen.writeNumberField("productId", value.getProduct().getId());
        gen.writeNumberField("customer", value.getCustomer().getId());
        gen.writeEndObject();
    }
}