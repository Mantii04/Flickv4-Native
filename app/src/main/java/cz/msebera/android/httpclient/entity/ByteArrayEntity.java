package cz.msebera.android.httpclient.entity;

import A.i;
import cz.msebera.android.httpclient.util.Args;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class ByteArrayEntity extends AbstractHttpEntity implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f13473b;

    @Deprecated
    protected final byte[] content;
    private final int len;
    private final int off;

    public ByteArrayEntity(byte[] bArr, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        this.content = bArr;
        this.f13473b = bArr;
        this.off = 0;
        this.len = bArr.length;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // cz.msebera.android.httpclient.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.f13473b, this.off, this.len);
    }

    @Override // cz.msebera.android.httpclient.HttpEntity
    public long getContentLength() {
        return this.len;
    }

    @Override // cz.msebera.android.httpclient.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // cz.msebera.android.httpclient.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // cz.msebera.android.httpclient.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.f13473b, this.off, this.len);
        outputStream.flush();
    }

    public ByteArrayEntity(byte[] bArr, int i2, int i7, ContentType contentType) {
        int i8;
        Args.notNull(bArr, "Source byte array");
        if (i2 >= 0 && i2 <= bArr.length && i7 >= 0 && (i8 = i2 + i7) >= 0 && i8 <= bArr.length) {
            this.content = bArr;
            this.f13473b = bArr;
            this.off = i2;
            this.len = i7;
            if (contentType != null) {
                setContentType(contentType.toString());
                return;
            }
            return;
        }
        StringBuilder p6 = i.p(i2, i7, "off: ", " len: ", " b.length: ");
        p6.append(bArr.length);
        throw new IndexOutOfBoundsException(p6.toString());
    }

    public ByteArrayEntity(byte[] bArr) {
        this(bArr, null);
    }

    public ByteArrayEntity(byte[] bArr, int i2, int i7) {
        this(bArr, i2, i7, null);
    }
}
