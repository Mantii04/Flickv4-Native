.class public final Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/L0;

.field public final synthetic e:Landroidx/fragment/app/L0;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/L0;Landroidx/fragment/app/L0;ZLp/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/L0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/L0;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/fragment/app/l;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Landroidx/fragment/app/L0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/L0;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Landroidx/fragment/app/w0;->a:Landroidx/fragment/app/C0;

    .line 14
    .line 15
    iget-boolean v2, p0, Landroidx/fragment/app/l;->f:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-void
.end method
