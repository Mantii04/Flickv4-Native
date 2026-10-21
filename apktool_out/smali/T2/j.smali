.class public abstract LT2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/content/Context;Lc3/a;Lc3/a;Ljava/lang/String;)LT2/j;
    .locals 1

    .line 1
    new-instance v0, LT2/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, LT2/d;-><init>(Landroid/content/Context;Lc3/a;Lc3/a;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getBackendName()Ljava/lang/String;
.end method

.method public abstract getMonotonicClock()Lc3/a;
.end method

.method public abstract getWallClock()Lc3/a;
.end method
