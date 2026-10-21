package n1;

import java.util.TreeMap;

/* loaded from: classes.dex */
public final class O implements r1.o, r1.n {

    /* renamed from: r, reason: collision with root package name */
    public static final N f18800r = new N(null);

    /* renamed from: s, reason: collision with root package name */
    public static final TreeMap f18801s = new TreeMap();

    /* renamed from: b, reason: collision with root package name */
    public final int f18802b;

    /* renamed from: e, reason: collision with root package name */
    public volatile String f18803e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f18804f;

    /* renamed from: j, reason: collision with root package name */
    public final double[] f18805j;

    /* renamed from: m, reason: collision with root package name */
    public final String[] f18806m;

    /* renamed from: n, reason: collision with root package name */
    public final byte[][] f18807n;

    /* renamed from: p, reason: collision with root package name */
    public final int[] f18808p;

    /* renamed from: q, reason: collision with root package name */
    public int f18809q;

    public O(int i2, kotlin.jvm.internal.g gVar) {
        this.f18802b = i2;
        int i7 = i2 + 1;
        this.f18808p = new int[i7];
        this.f18804f = new long[i7];
        this.f18805j = new double[i7];
        this.f18806m = new String[i7];
        this.f18807n = new byte[i7][];
    }

    public static final O acquire(String str, int i2) {
        return f18800r.acquire(str, i2);
    }

    @Override // r1.n
    public void bindBlob(int i2, byte[] value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        this.f18808p[i2] = 5;
        this.f18807n[i2] = value;
    }

    @Override // r1.n
    public void bindDouble(int i2, double d7) {
        this.f18808p[i2] = 3;
        this.f18805j[i2] = d7;
    }

    @Override // r1.n
    public void bindLong(int i2, long j7) {
        this.f18808p[i2] = 2;
        this.f18804f[i2] = j7;
    }

    @Override // r1.n
    public void bindNull(int i2) {
        this.f18808p[i2] = 1;
    }

    @Override // r1.n
    public void bindString(int i2, String value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        this.f18808p[i2] = 4;
        this.f18806m[i2] = value;
    }

    @Override // r1.o
    public void bindTo(r1.n statement) {
        kotlin.jvm.internal.j.checkNotNullParameter(statement, "statement");
        int argCount = getArgCount();
        if (1 > argCount) {
            return;
        }
        int i2 = 1;
        while (true) {
            int i7 = this.f18808p[i2];
            if (i7 == 1) {
                statement.bindNull(i2);
            } else if (i7 == 2) {
                statement.bindLong(i2, this.f18804f[i2]);
            } else if (i7 == 3) {
                statement.bindDouble(i2, this.f18805j[i2]);
            } else if (i7 == 4) {
                String str = this.f18806m[i2];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindString(i2, str);
            } else if (i7 == 5) {
                byte[] bArr = this.f18807n[i2];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.bindBlob(i2, bArr);
            }
            if (i2 == argCount) {
                return;
            } else {
                i2++;
            }
        }
    }

    public int getArgCount() {
        return this.f18809q;
    }

    @Override // r1.o
    public String getSql() {
        String str = this.f18803e;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void init(String query, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(query, "query");
        this.f18803e = query;
        this.f18809q = i2;
    }

    public final void release() {
        TreeMap treeMap = f18801s;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f18802b), this);
            f18800r.prunePoolLocked$room_runtime_release();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
