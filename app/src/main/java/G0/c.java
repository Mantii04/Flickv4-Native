package G0;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayOutputStream f1012a;

    /* renamed from: b, reason: collision with root package name */
    public final DataOutputStream f1013b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f1012a = byteArrayOutputStream;
        this.f1013b = new DataOutputStream(byteArrayOutputStream);
    }

    public byte[] encode(a aVar) {
        ByteArrayOutputStream byteArrayOutputStream = this.f1012a;
        byteArrayOutputStream.reset();
        DataOutputStream dataOutputStream = this.f1013b;
        try {
            dataOutputStream.writeBytes(aVar.f1006a);
            dataOutputStream.writeByte(0);
            String str = aVar.f1007b;
            if (str == null) {
                str = "";
            }
            dataOutputStream.writeBytes(str);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeLong(aVar.f1008c);
            dataOutputStream.writeLong(aVar.f1009d);
            dataOutputStream.write(aVar.f1010e);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e3) {
            throw new RuntimeException(e3);
        }
    }
}
