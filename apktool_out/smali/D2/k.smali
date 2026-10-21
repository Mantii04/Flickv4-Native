.class public interface abstract LD2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/l;


# virtual methods
.method public abstract getRequest()LC2/c;
.end method

.method public abstract getSize(LD2/j;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;LE2/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LE2/d;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeCallback(LD2/j;)V
.end method

.method public abstract setRequest(LC2/c;)V
.end method
