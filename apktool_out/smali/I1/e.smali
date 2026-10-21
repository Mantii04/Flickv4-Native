.class public final LI1/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:LI1/f;


# direct methods
.method public constructor <init>(LI1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI1/e;->a:LI1/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LI1/e;->a:LI1/f;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LI1/f;->onBroadcastReceive(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
