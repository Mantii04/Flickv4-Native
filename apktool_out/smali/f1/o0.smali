.class public final Lf1/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf1/p0;


# direct methods
.method public constructor <init>(Lf1/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/o0;->b:Lf1/p0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/o0;->b:Lf1/p0;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/p0;->i:Lf1/x0;

    .line 4
    .line 5
    iget-object v2, v1, Lf1/x0;->n:Lf1/p0;

    .line 6
    .line 7
    if-ne v2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lf1/x0;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
