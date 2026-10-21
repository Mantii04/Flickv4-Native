.class public final LC1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/B;


# instance fields
.field public final c:Landroidx/lifecycle/E;

.field public final d:LM1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/E;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/E;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LC1/o;->c:Landroidx/lifecycle/E;

    .line 10
    .line 11
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LC1/o;->d:LM1/g;

    .line 16
    .line 17
    sget-object v0, LB1/B;->b:LB1/y;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, LC1/o;->markState(LB1/A;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public markState(LB1/A;)V
    .locals 2

    .line 1
    iget-object v0, p0, LC1/o;->c:Landroidx/lifecycle/E;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/E;->postValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LB1/z;

    .line 7
    .line 8
    iget-object v1, p0, LC1/o;->d:LM1/g;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, LB1/z;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, LM1/g;->set(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    instance-of v0, p1, LB1/x;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, LB1/x;

    .line 23
    .line 24
    invoke-virtual {p1}, LB1/x;->getThrowable()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, LM1/g;->setException(Ljava/lang/Throwable;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
