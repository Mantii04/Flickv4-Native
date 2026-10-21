package com.google.firebase.encoders;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface ValueEncoderContext {
    ValueEncoderContext add(double d7) throws IOException;

    ValueEncoderContext add(float f3) throws IOException;

    ValueEncoderContext add(int i2) throws IOException;

    ValueEncoderContext add(long j7) throws IOException;

    ValueEncoderContext add(String str) throws IOException;

    ValueEncoderContext add(boolean z6) throws IOException;

    ValueEncoderContext add(byte[] bArr) throws IOException;
}
