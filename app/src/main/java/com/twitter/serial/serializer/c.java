package com.twitter.serial.serializer;

import java.io.IOException;
import t4.AbstractC1655a;
import u4.AbstractC1700a;

/* loaded from: classes2.dex */
public abstract class c {
    public abstract Object deserialize(b bVar, AbstractC1655a abstractC1655a) throws IOException, ClassNotFoundException;

    public final Object deserializeNotNull(b bVar, AbstractC1655a abstractC1655a) throws IOException, ClassNotFoundException {
        return AbstractC1700a.checkIsNotNull(deserialize(bVar, abstractC1655a));
    }
}
