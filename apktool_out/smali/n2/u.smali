.class public abstract Ln2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln2/q;

.field public static final b:Ln2/r;

.field public static final c:Ln2/s;

.field public static final d:Ln2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln2/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ln2/u;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ln2/q;

    .line 7
    .line 8
    invoke-direct {v0}, Ln2/u;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ln2/u;->a:Ln2/q;

    .line 12
    .line 13
    new-instance v0, Ln2/r;

    .line 14
    .line 15
    invoke-direct {v0}, Ln2/u;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ln2/u;->b:Ln2/r;

    .line 19
    .line 20
    new-instance v0, Ln2/s;

    .line 21
    .line 22
    invoke-direct {v0}, Ln2/u;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Ln2/u;->c:Ln2/s;

    .line 26
    .line 27
    new-instance v0, Ln2/t;

    .line 28
    .line 29
    invoke-direct {v0}, Ln2/u;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Ln2/u;->d:Ln2/t;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract decodeCachedData()Z
.end method

.method public abstract decodeCachedResource()Z
.end method

.method public abstract isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method
