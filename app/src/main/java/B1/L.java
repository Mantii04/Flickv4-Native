package B1;

import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class L {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f149a;

    /* renamed from: b, reason: collision with root package name */
    public final K1.E f150b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f151c;

    static {
        new K(null);
    }

    public L(UUID id, K1.E workSpec, Set<String> tags) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        kotlin.jvm.internal.j.checkNotNullParameter(tags, "tags");
        this.f149a = id;
        this.f150b = workSpec;
        this.f151c = tags;
    }

    public UUID getId() {
        return this.f149a;
    }

    public final String getStringId() {
        String uuid = getId().toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(uuid, "id.toString()");
        return uuid;
    }

    public final Set<String> getTags() {
        return this.f151c;
    }

    public final K1.E getWorkSpec() {
        return this.f150b;
    }
}
