.class Lcom/oneplus/gallery/CameraGalleryImpl$22;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 3094
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$9800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - Details"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1900(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetails(I)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$9900(Lcom/oneplus/gallery/CameraGalleryImpl;I)V

    .line 3100
    return-void
.end method
