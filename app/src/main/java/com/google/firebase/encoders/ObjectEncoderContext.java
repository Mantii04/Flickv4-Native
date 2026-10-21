package com.google.firebase.encoders;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface ObjectEncoderContext {
    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d7) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, float f3) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i2) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j7) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z6) throws IOException;

    @Deprecated
    ObjectEncoderContext add(String str, double d7) throws IOException;

    @Deprecated
    ObjectEncoderContext add(String str, int i2) throws IOException;

    @Deprecated
    ObjectEncoderContext add(String str, long j7) throws IOException;

    @Deprecated
    ObjectEncoderContext add(String str, Object obj) throws IOException;

    @Deprecated
    ObjectEncoderContext add(String str, boolean z6) throws IOException;

    ObjectEncoderContext inline(Object obj) throws IOException;

    ObjectEncoderContext nested(FieldDescriptor fieldDescriptor) throws IOException;

    ObjectEncoderContext nested(String str) throws IOException;
}
