package okhttp3.internal.cache;

import H5.l;
import e6.AbstractC0875q;
import e6.C0870l;
import e6.J;
import java.io.IOException;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public class FaultHidingSink extends AbstractC0875q {
    private boolean hasErrors;
    private final l onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaultHidingSink(J delegate, l onException) {
        super(delegate);
        j.checkNotNullParameter(delegate, "delegate");
        j.checkNotNullParameter(onException, "onException");
        this.onException = onException;
    }

    @Override // e6.AbstractC0875q, e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e3) {
            this.hasErrors = true;
            this.onException.invoke(e3);
        }
    }

    @Override // e6.AbstractC0875q, e6.J, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e3) {
            this.hasErrors = true;
            this.onException.invoke(e3);
        }
    }

    public final l getOnException() {
        return this.onException;
    }

    @Override // e6.AbstractC0875q, e6.J
    public void write(C0870l source, long j7) {
        j.checkNotNullParameter(source, "source");
        if (this.hasErrors) {
            source.skip(j7);
            return;
        }
        try {
            super.write(source, j7);
        } catch (IOException e3) {
            this.hasErrors = true;
            this.onException.invoke(e3);
        }
    }
}
