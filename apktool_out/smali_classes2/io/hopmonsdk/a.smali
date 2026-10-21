.class public final Lio/hopmonsdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/hopmonsdk/Hopmn$ConsentCallback;


# instance fields
.field public final synthetic a:Lio/hopmonsdk/Hopmn$ConsentCallback;

.field public final synthetic b:Lio/hopmonsdk/Hopmn;


# direct methods
.method public constructor <init>(Lio/hopmonsdk/Hopmn;Lio/hopmonsdk/Hopmn$ConsentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/hopmonsdk/a;->b:Lio/hopmonsdk/Hopmn;

    iput-object p2, p0, Lio/hopmonsdk/a;->a:Lio/hopmonsdk/Hopmn$ConsentCallback;

    return-void
.end method


# virtual methods
.method public onAgreed()V
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/a;->b:Lio/hopmonsdk/Hopmn;

    invoke-virtual {v0}, Lio/hopmonsdk/Hopmn;->start()Z

    iget-object v0, p0, Lio/hopmonsdk/a;->a:Lio/hopmonsdk/Hopmn$ConsentCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/hopmonsdk/Hopmn$ConsentCallback;->onAgreed()V

    :cond_0
    return-void
.end method

.method public onDeclined()V
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/a;->b:Lio/hopmonsdk/Hopmn;

    invoke-virtual {v0}, Lio/hopmonsdk/Hopmn;->stop()V

    iget-object v0, p0, Lio/hopmonsdk/a;->a:Lio/hopmonsdk/Hopmn$ConsentCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/hopmonsdk/Hopmn$ConsentCallback;->onDeclined()V

    :cond_0
    return-void
.end method
