package S0;

import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableList f3250a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3251b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3252c;

    /* renamed from: d, reason: collision with root package name */
    public final long f3253d;

    public c(List<Cue> list, long j7, long j8) {
        this.f3250a = ImmutableList.copyOf((Collection) list);
        this.f3251b = j7;
        this.f3252c = j8;
        long j9 = C.TIME_UNSET;
        if (j7 != C.TIME_UNSET && j8 != C.TIME_UNSET) {
            j9 = j7 + j8;
        }
        this.f3253d = j9;
    }
}
