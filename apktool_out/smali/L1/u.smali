.class public final LL1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LC1/G;

.field public final e:LC1/v;

.field public final f:LB1/Q;


# direct methods
.method public constructor <init>(LC1/G;LC1/v;LB1/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL1/u;->b:LC1/G;

    .line 5
    .line 6
    iput-object p2, p0, LL1/u;->e:LC1/v;

    .line 7
    .line 8
    iput-object p3, p0, LL1/u;->f:LB1/Q;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LL1/u;->b:LC1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/G;->getProcessor()LC1/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LL1/u;->e:LC1/v;

    .line 8
    .line 9
    iget-object v2, p0, LL1/u;->f:LB1/Q;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, LC1/r;->startWork(LC1/v;LB1/Q;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
