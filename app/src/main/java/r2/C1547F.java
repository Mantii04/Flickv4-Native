package r2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: r2.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1547F implements InterfaceC1546E {
    @Override // r2.InterfaceC1546E
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // r2.InterfaceC1546E
    public void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // r2.InterfaceC1546E
    public InputStream open(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }
}
