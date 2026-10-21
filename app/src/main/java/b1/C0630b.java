package b1;

import androidx.media3.common.util.ParsableByteArray;
import java.util.regex.Pattern;

/* renamed from: b1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0630b {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f8338c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f8339d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f8340a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f8341b = new StringBuilder();

    public static String a(ParsableByteArray parsableByteArray, StringBuilder sb) {
        boolean z6 = false;
        sb.setLength(0);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && !z6) {
            char c7 = (char) parsableByteArray.getData()[position];
            if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !((c7 >= '0' && c7 <= '9') || c7 == '#' || c7 == '-' || c7 == '.' || c7 == '_'))) {
                z6 = true;
            } else {
                position++;
                sb.append(c7);
            }
        }
        parsableByteArray.skipBytes(position - parsableByteArray.getPosition());
        return sb.toString();
    }

    public static String b(ParsableByteArray parsableByteArray, StringBuilder sb) {
        c(parsableByteArray);
        if (parsableByteArray.bytesLeft() == 0) {
            return null;
        }
        String a7 = a(parsableByteArray, sb);
        if (!a7.isEmpty()) {
            return a7;
        }
        return "" + ((char) parsableByteArray.readUnsignedByte());
    }

    public static void c(ParsableByteArray parsableByteArray) {
        while (true) {
            for (boolean z6 = true; parsableByteArray.bytesLeft() > 0 && z6; z6 = false) {
                char c7 = (char) parsableByteArray.getData()[parsableByteArray.getPosition()];
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    parsableByteArray.skipBytes(1);
                } else {
                    int position = parsableByteArray.getPosition();
                    int limit = parsableByteArray.limit();
                    byte[] data = parsableByteArray.getData();
                    int i2 = position + 2;
                    if (i2 <= limit) {
                        int i7 = position + 1;
                        if (data[position] == 47 && data[i7] == 42) {
                            while (true) {
                                int i8 = i2 + 1;
                                if (i8 >= limit) {
                                    break;
                                }
                                if (((char) data[i2]) == '*' && ((char) data[i8]) == '/') {
                                    i2 += 2;
                                    limit = i2;
                                } else {
                                    i2 = i8;
                                }
                            }
                            parsableByteArray.skipBytes(limit - parsableByteArray.getPosition());
                        }
                    }
                }
            }
            return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:165:0x02fa, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x00a2, code lost:
    
        if (")".equals(b(r9, r4)) == false) goto L8;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<b1.C0631c> parseBlock(androidx.media3.common.util.ParsableByteArray r18) {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b1.C0630b.parseBlock(androidx.media3.common.util.ParsableByteArray):java.util.List");
    }
}
