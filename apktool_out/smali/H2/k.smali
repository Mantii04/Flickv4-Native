.class public abstract LH2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newInstance()LH2/k;
    .locals 1

    .line 1
    new-instance v0, LH2/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract setRecycled(Z)V
.end method

.method public abstract throwIfRecycled()V
.end method
