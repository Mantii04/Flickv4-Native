.class public final Landroidx/mediarouter/app/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/Q;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/I;->b:Landroidx/mediarouter/app/Q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/I;->b:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Le/c0;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
