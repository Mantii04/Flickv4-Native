package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.ProtoEnum;

/* loaded from: classes.dex */
public enum LogEventDropped$Reason implements ProtoEnum {
    REASON_UNKNOWN(0),
    MESSAGE_TOO_OLD(1),
    CACHE_FULL(2),
    PAYLOAD_TOO_BIG(3),
    MAX_RETRIES_REACHED(4),
    INVALID_PAYLOD(5),
    SERVER_ERROR(6);


    /* renamed from: b, reason: collision with root package name */
    public final int f9508b;

    LogEventDropped$Reason(int i2) {
        this.f9508b = i2;
    }

    @Override // com.google.firebase.encoders.proto.ProtoEnum
    public int getNumber() {
        return this.f9508b;
    }
}
