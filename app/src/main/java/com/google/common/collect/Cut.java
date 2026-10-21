package com.google.common.collect;

import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Comparable f13053b;

    public static final class AboveAll extends Cut<Comparable<?>> {

        /* renamed from: e, reason: collision with root package name */
        public static final AboveAll f13054e = new AboveAll();
        private static final long serialVersionUID = 0;

        private AboveAll() {
            super("");
        }

        @Override // com.google.common.collect.Cut
        public final void b(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // java.lang.Comparable
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : 1;
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.Cut
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        public final boolean f(Comparable comparable) {
            return false;
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "+∞";
        }
    }

    public static final class BelowAll extends Cut<Comparable<?>> {

        /* renamed from: e, reason: collision with root package name */
        public static final BelowAll f13055e = new BelowAll();
        private static final long serialVersionUID = 0;

        private BelowAll() {
            super("");
        }

        @Override // com.google.common.collect.Cut
        public final void b(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // java.lang.Comparable
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : -1;
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        public final boolean f(Comparable comparable) {
            return true;
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "-∞";
        }
    }

    public static final class BelowValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        @Override // com.google.common.collect.Cut
        public final void b(StringBuilder sb) {
            sb.append('[');
            sb.append(this.f13053b);
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            sb.append(this.f13053b);
            sb.append(')');
        }

        @Override // com.google.common.collect.Cut
        public final boolean f(Comparable comparable) {
            Range range = Range.f13093f;
            return this.f13053b.compareTo(comparable) <= 0;
        }

        @Override // com.google.common.collect.Cut
        public int hashCode() {
            return this.f13053b.hashCode();
        }

        public String toString() {
            return "\\" + this.f13053b + RemoteSettings.FORWARD_SLASH_STRING;
        }
    }

    public Cut(Comparable comparable) {
        this.f13053b = comparable;
    }

    public abstract void b(StringBuilder sb);

    public int compareTo(Cut<C> cut) {
        if (cut == BelowAll.f13055e) {
            return 1;
        }
        if (cut == AboveAll.f13054e) {
            return -1;
        }
        Comparable comparable = cut.f13053b;
        Range range = Range.f13093f;
        int compareTo = this.f13053b.compareTo(comparable);
        return compareTo != 0 ? compareTo : Boolean.compare(false, false);
    }

    public abstract void d(StringBuilder sb);

    public Comparable e() {
        return this.f13053b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cut) {
            try {
                if (compareTo((Cut) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract boolean f(Comparable comparable);

    public abstract int hashCode();
}
