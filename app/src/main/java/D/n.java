package D;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class n extends q {
    public static Font a(FontFamily fontFamily, int i2) {
        FontStyle fontStyle = new FontStyle((i2 & 1) != 0 ? 700 : HttpStatus.SC_BAD_REQUEST, (i2 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int b7 = b(fontStyle, font.getStyle());
        for (int i7 = 1; i7 < fontFamily.getSize(); i7++) {
            Font font2 = fontFamily.getFont(i7);
            int b8 = b(fontStyle, font2.getStyle());
            if (b8 < b7) {
                font = font2;
                b7 = b8;
            }
        }
        return font;
    }

    public static int b(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // D.q
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, C.g gVar, Resources resources, int i2) {
        try {
            FontFamily.Builder builder = null;
            for (C.h hVar : gVar.getEntries()) {
                try {
                    Font build = new Font.Builder(resources, hVar.getResourceId()).setWeight(hVar.getWeight()).setSlant(hVar.isItalic() ? 1 : 0).setTtcIndex(hVar.getTtcIndex()).setFontVariationSettings(hVar.getVariationSettings()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(a(build2, i2).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // D.q
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2) {
        int i7;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = qVarArr.length;
            FontFamily.Builder builder = null;
            while (i7 < length) {
                J.q qVar = qVarArr[i7];
                try {
                    openFileDescriptor = contentResolver.openFileDescriptor(qVar.getUri(), "r", cancellationSignal);
                } catch (IOException unused) {
                }
                if (openFileDescriptor == null) {
                    i7 = openFileDescriptor == null ? i7 + 1 : 0;
                } else {
                    try {
                        Font build = new Font.Builder(openFileDescriptor).setWeight(qVar.getWeight()).setSlant(qVar.isItalic() ? 1 : 0).setTtcIndex(qVar.getTtcIndex()).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(build);
                        } else {
                            builder.addFont(build);
                        }
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                openFileDescriptor.close();
            }
            if (builder != null) {
                FontFamily build2 = builder.build();
                return new Typeface.CustomFallbackBuilder(build2).setStyle(a(build2, i2).getStyle()).build();
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    @Override // D.q
    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // D.q
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i7) {
        try {
            Font build = new Font.Builder(resources, i2).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // D.q
    public J.q findBestInfo(J.q[] qVarArr, int i2) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
