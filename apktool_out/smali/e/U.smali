.class public final Le/U;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/V;


# direct methods
.method public constructor <init>(Le/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/U;->a:Le/V;

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
    .locals 0

    .line 1
    iget-object p1, p0, Le/U;->a:Le/V;

    .line 2
    .line 3
    invoke-virtual {p1}, Le/V;->onChange()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
