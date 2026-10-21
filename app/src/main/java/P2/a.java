package P2;

import com.google.android.datatransport.Priority;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f2680a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2681b;

    /* renamed from: c, reason: collision with root package name */
    public final Priority f2682c;

    public a(Integer num, Object obj, Priority priority) {
        this.f2680a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.f2681b = obj;
        this.f2682c = priority;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            Integer num = this.f2680a;
            if (num != null ? num.equals(cVar.getCode()) : cVar.getCode() == null) {
                if (this.f2681b.equals(cVar.getPayload()) && this.f2682c.equals(cVar.getPriority())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // P2.c
    public Integer getCode() {
        return this.f2680a;
    }

    @Override // P2.c
    public Object getPayload() {
        return this.f2681b;
    }

    @Override // P2.c
    public Priority getPriority() {
        return this.f2682c;
    }

    public int hashCode() {
        Integer num = this.f2680a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f2681b.hashCode()) * 1000003) ^ this.f2682c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f2680a + ", payload=" + this.f2681b + ", priority=" + this.f2682c + "}";
    }
}
