package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;
import v0.k0;

@UnstableApi
/* loaded from: classes.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final ImmutableList<k0> sniffFailures;
    public final Uri uri;

    @Deprecated
    public UnrecognizedInputFormatException(String str, Uri uri) {
        this(str, uri, ImmutableList.of());
    }

    @Override // androidx.media3.common.ParserException, java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (this.sniffFailures.isEmpty()) {
            return message;
        }
        StringBuilder s6 = A.i.s(message, "\nsniff failures: ");
        s6.append(this.sniffFailures);
        return s6.toString();
    }

    public UnrecognizedInputFormatException(String str, Uri uri, List<? extends k0> list) {
        super(str, null, false, 1);
        this.uri = uri;
        this.sniffFailures = ImmutableList.copyOf((Collection) list);
    }
}
