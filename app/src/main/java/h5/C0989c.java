package h5;

import cz.msebera.android.httpclient.message.TokenParser;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: h5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0989c {

    /* renamed from: a, reason: collision with root package name */
    public final IvParameterSpec f16617a = new IvParameterSpec("bRRhl2H2j7yXmuk4".getBytes());

    /* renamed from: b, reason: collision with root package name */
    public final SecretKeySpec f16618b = new SecretKeySpec("cLt3Gp39O3yvW7Gw".getBytes(), "AES");

    /* renamed from: c, reason: collision with root package name */
    public final Cipher f16619c;

    public C0989c() {
        try {
            this.f16619c = Cipher.getInstance("AES/CBC/NoPadding");
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        } catch (NoSuchPaddingException e7) {
            e7.printStackTrace();
        }
    }

    public static String m33719a(byte[] bArr) {
        StringBuilder o6;
        byte b7;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        String str = "";
        for (int i2 = 0; i2 < length; i2++) {
            if ((bArr[i2] & 255) < 16) {
                o6 = A.i.s(str, "0");
                b7 = bArr[i2];
            } else {
                o6 = b.c.o(str);
                b7 = bArr[i2];
            }
            o6.append(Integer.toHexString(b7 & 255));
            str = o6.toString();
        }
        return str;
    }

    public byte[] mo31918a(String str) throws Exception {
        Cipher cipher = this.f16619c;
        if (str == null || str.length() == 0) {
            throw new Exception("Empty string");
        }
        try {
            cipher.init(1, this.f16618b, this.f16617a);
            int length = 16 - (str.length() % 16);
            for (int i2 = 0; i2 < length; i2++) {
                str = str + TokenParser.SP;
            }
            return cipher.doFinal(str.getBytes());
        } catch (Exception e3) {
            throw new Exception("[encrypt] " + e3.getMessage());
        }
    }
}
