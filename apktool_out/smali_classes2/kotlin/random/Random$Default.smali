.class public final Lkotlin/random/Random$Default;
.super LK5/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, LK5/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public nextInt()I
    .locals 1

    .line 1
    invoke-static {}, LK5/d;->access$getDefaultRandom$cp()LK5/d;

    move-result-object v0

    invoke-virtual {v0}, LK5/d;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 2
    invoke-static {}, LK5/d;->access$getDefaultRandom$cp()LK5/d;

    move-result-object v0

    invoke-virtual {v0, p1}, LK5/d;->nextInt(I)I

    move-result p1

    return p1
.end method
