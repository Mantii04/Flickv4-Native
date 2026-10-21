package r2;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: r2.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1546E {
    void close(Object obj) throws IOException;

    Class<Object> getDataClass();

    Object open(File file) throws FileNotFoundException;
}
