.class public abstract LK5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkotlin/random/Random$Default;

.field public static final e:LK5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/random/Random$Default;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LK5/d;->b:Lkotlin/random/Random$Default;

    .line 8
    .line 9
    sget-object v0, LC5/c;->a:LE5/b;

    .line 10
    .line 11
    invoke-virtual {v0}, LE5/b;->defaultPlatformRandom()LK5/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LK5/d;->e:LK5/d;

    .line 16
    .line 17
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

.method public static final synthetic access$getDefaultRandom$cp()LK5/d;
    .locals 1

    .line 1
    sget-object v0, LK5/d;->e:LK5/d;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract nextInt()I
.end method

.method public abstract nextInt(I)I
.end method
