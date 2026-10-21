package n1;

/* loaded from: classes.dex */
public abstract class K {

    /* renamed from: a, reason: collision with root package name */
    public final int f18792a;

    public K(int i2) {
        this.f18792a = i2;
    }

    public abstract void createAllTables(r1.f fVar);

    public abstract void dropAllTables(r1.f fVar);

    public abstract void onCreate(r1.f fVar);

    public abstract void onOpen(r1.f fVar);

    public abstract void onPostMigrate(r1.f fVar);

    public abstract void onPreMigrate(r1.f fVar);

    public abstract L onValidateSchema(r1.f fVar);
}
