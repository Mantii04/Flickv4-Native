package I0;

import E0.d;
import P3.AbstractC0226a;
import androidx.media3.common.Metadata;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f1230c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a, reason: collision with root package name */
    public final CharsetDecoder f1231a = StandardCharsets.UTF_8.newDecoder();

    /* renamed from: b, reason: collision with root package name */
    public final CharsetDecoder f1232b = StandardCharsets.ISO_8859_1.newDecoder();

    @Override // E0.d
    public Metadata decode(E0.b bVar, ByteBuffer byteBuffer) {
        String str;
        CharsetDecoder charsetDecoder = this.f1232b;
        CharsetDecoder charsetDecoder2 = this.f1231a;
        String str2 = null;
        try {
            str = charsetDecoder2.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = charsetDecoder.decode(byteBuffer).toString();
                charsetDecoder.reset();
                byteBuffer.rewind();
                str = charBuffer;
            } catch (CharacterCodingException unused2) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                str = null;
            } catch (Throwable th) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            charsetDecoder2.reset();
            byteBuffer.rewind();
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (str == null) {
            return new Metadata(new c(bArr, null, null));
        }
        Matcher matcher = f1230c.matcher(str);
        String str3 = null;
        for (int i2 = 0; matcher.find(i2); i2 = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String lowerCase = AbstractC0226a.toLowerCase(group);
                lowerCase.getClass();
                if (lowerCase.equals("streamurl")) {
                    str3 = group2;
                } else if (lowerCase.equals("streamtitle")) {
                    str2 = group2;
                }
            }
        }
        return new Metadata(new c(bArr, str2, str3));
    }
}
