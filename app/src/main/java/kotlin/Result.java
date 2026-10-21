package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.j;
import u5.C1708g;

/* loaded from: classes2.dex */
public abstract class Result<T> implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f17390b = 0;

    public static final class Failure implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final Throwable f17391b;

        public Failure(Throwable exception) {
            j.checkNotNullParameter(exception, "exception");
            this.f17391b = exception;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Failure) {
                return j.areEqual(this.f17391b, ((Failure) obj).f17391b);
            }
            return false;
        }

        public int hashCode() {
            return this.f17391b.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f17391b + ')';
        }
    }

    static {
        new C1708g(null);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m103constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m104exceptionOrNullimpl(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).f17391b;
        }
        return null;
    }

    /* renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m105isFailureimpl(Object obj) {
        return obj instanceof Failure;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m106isSuccessimpl(Object obj) {
        return !(obj instanceof Failure);
    }
}
