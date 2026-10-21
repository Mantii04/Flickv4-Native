package v0;

import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public interface C {
    List<k0> getSniffFailureDetails();

    C getUnderlyingImplementation();

    void init(F f3);

    int read(D d7, c0 c0Var) throws IOException;

    void release();

    void seek(long j7, long j8);

    boolean sniff(D d7) throws IOException;
}
