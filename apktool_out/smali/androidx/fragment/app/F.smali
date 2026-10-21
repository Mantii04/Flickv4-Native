.class public final synthetic Landroidx/fragment/app/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/H;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/F;->a:Landroidx/fragment/app/H;

    return-void
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/F;->a:Landroidx/fragment/app/H;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/fragment/app/H;->mFragments:Landroidx/fragment/app/N;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/N;->attachHost(Landroidx/fragment/app/C;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
