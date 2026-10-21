package D;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.media3.common.util.Log;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class q {
    public q() {
        new ConcurrentHashMap();
    }

    public abstract Typeface createFromFontFamilyFilesResourceEntry(Context context, C.g gVar, Resources resources, int i2);

    public abstract Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2);

    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = r.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (r.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i7) {
        File tempFile = r.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (r.copyToFile(tempFile, resources, i2)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public J.q findBestInfo(J.q[] qVarArr, int i2) {
        o oVar = new o();
        int i7 = (i2 & 1) == 0 ? HttpStatus.SC_BAD_REQUEST : 700;
        boolean z6 = (i2 & 2) != 0;
        J.q qVar = null;
        int i8 = Log.LOG_LEVEL_OFF;
        for (J.q qVar2 : qVarArr) {
            int abs = (Math.abs(oVar.getWeight((Object) qVar2) - i7) * 2) + (oVar.isItalic((Object) qVar2) == z6 ? 0 : 1);
            if (qVar == null || i8 > abs) {
                qVar = qVar2;
                i8 = abs;
            }
        }
        return qVar;
    }
}
