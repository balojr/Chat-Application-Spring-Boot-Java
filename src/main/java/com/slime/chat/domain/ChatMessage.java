package com.slime.chat.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ChatMessage {
    private MessageType type;
    private String content;
    private String sender;

    public ChatMessage() {

    }

    public enum MessageType {
        CHAT,
        JOIN,
        LEAVE
    }
}
