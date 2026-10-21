package r2;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: r2.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1543B implements InterfaceC1546E {
    @Override // r2.InterfaceC1546E
    public Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }

    @Override // r2.InterfaceC1546E
    public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // r2.InterfaceC1546E
    public ParcelFileDescriptor open(File file) throws FileNotFoundException {
        return ParcelFileDescriptor.open(file, 268435456);
    }
}
