.class public final Lm1/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LL/f;


# instance fields
.field public a:I

.field public b:Lm1/a0;

.field public c:Lm1/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LL/f;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, LL/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lm1/S0;->d:LL/f;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Lm1/S0;
    .locals 1

    .line 1
    sget-object v0, Lm1/S0;->d:LL/f;

    .line 2
    .line 3
    invoke-interface {v0}, LL/e;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm1/S0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lm1/S0;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method
