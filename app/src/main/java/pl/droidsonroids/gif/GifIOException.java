package pl.droidsonroids.gif;

import A.i;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes2.dex */
public class GifIOException extends IOException {
    private static final long serialVersionUID = 13038402904505L;

    /* renamed from: b, reason: collision with root package name */
    public final GifError f19515b;

    /* renamed from: e, reason: collision with root package name */
    public final String f19516e;

    public GifIOException(int i2, String str) {
        GifError gifError;
        GifError[] values = GifError.values();
        int length = values.length;
        int i7 = 0;
        while (true) {
            if (i7 >= length) {
                gifError = GifError.UNKNOWN;
                gifError.f19514e = i2;
                break;
            } else {
                gifError = values[i7];
                if (gifError.f19514e == i2) {
                    break;
                } else {
                    i7++;
                }
            }
        }
        this.f19515b = gifError;
        this.f19516e = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        GifError gifError = this.f19515b;
        String str = this.f19516e;
        if (str == null) {
            gifError.getClass();
            Locale locale = Locale.ENGLISH;
            StringBuilder q6 = i.q(gifError.f19514e, "GifError ", ": ");
            q6.append(gifError.f19513b);
            return q6.toString();
        }
        StringBuilder sb = new StringBuilder();
        gifError.getClass();
        Locale locale2 = Locale.ENGLISH;
        StringBuilder q7 = i.q(gifError.f19514e, "GifError ", ": ");
        q7.append(gifError.f19513b);
        sb.append(q7.toString());
        sb.append(": ");
        sb.append(str);
        return sb.toString();
    }
}
