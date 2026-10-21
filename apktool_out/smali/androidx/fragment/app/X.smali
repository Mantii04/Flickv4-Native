.class public final Landroidx/fragment/app/X;
.super Landroidx/fragment/app/O;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/fragment/app/i0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/X;->b:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/O;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/C;
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/X;->b:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/i0;->getHost()Landroidx/fragment/app/P;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/i0;->getHost()Landroidx/fragment/app/P;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Landroidx/fragment/app/P;->e:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/L;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/C;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
