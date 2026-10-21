.class public final Lio/hopmonsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lio/hopmonsdk/Hopmn;


# direct methods
.method public constructor <init>(Lio/hopmonsdk/Hopmn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/hopmonsdk/b;->b:Lio/hopmonsdk/Hopmn;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/hopmonsdk/b;->b:Lio/hopmonsdk/Hopmn;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lio/hopmonsdk/Hopmn;->g:Z

    .line 5
    .line 6
    return-void
.end method
