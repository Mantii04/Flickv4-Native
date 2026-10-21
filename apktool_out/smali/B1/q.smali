.class public abstract LB1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static failure()LB1/q;
    .locals 1

    .line 1
    new-instance v0, LB1/n;

    .line 2
    .line 3
    invoke-direct {v0}, LB1/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static retry()LB1/q;
    .locals 1

    .line 1
    new-instance v0, LB1/o;

    .line 2
    .line 3
    invoke-direct {v0}, LB1/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static success()LB1/q;
    .locals 1

    .line 1
    new-instance v0, LB1/p;

    invoke-direct {v0}, LB1/p;-><init>()V

    return-object v0
.end method

.method public static success(LB1/h;)LB1/q;
    .locals 1

    .line 2
    new-instance v0, LB1/p;

    invoke-direct {v0, p0}, LB1/p;-><init>(LB1/h;)V

    return-object v0
.end method
