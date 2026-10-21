.class public final synthetic LM/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic b:LM/B;

.field public final synthetic e:LM/E;


# direct methods
.method public synthetic constructor <init>(LM/B;LM/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/z;->b:LM/B;

    iput-object p2, p0, LM/z;->e:LM/E;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object p1, p0, LM/z;->b:LM/B;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, LM/z;->e:LM/E;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, LM/B;->removeMenuProvider(LM/E;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
