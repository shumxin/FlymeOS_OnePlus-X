.class Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;
.super Ljava/lang/Object;
.source "ResolutionWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/menu/ResolutionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/menu/ResolutionWindow;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 58
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    # getter for: Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->m_selecteditem:I
    invoke-static {v0}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->access$000(Lcom/meizu/media/camera/ui/menu/ResolutionWindow;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 60
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->hiddenListView(Z)V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    # setter for: Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->m_selecteditem:I
    invoke-static {v0, p3}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->access$002(Lcom/meizu/media/camera/ui/menu/ResolutionWindow;I)I

    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    # getter for: Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->m_Adapter:Lcom/meizu/media/camera/ui/menu/ResolutionWindow$Adapter;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->access$100(Lcom/meizu/media/camera/ui/menu/ResolutionWindow;)Lcom/meizu/media/camera/ui/menu/ResolutionWindow$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$Adapter;->notifyDataSetChanged()V

    .line 65
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    # getter for: Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->access$200(Lcom/meizu/media/camera/ui/menu/ResolutionWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 66
    iget-object v0, p0, Lcom/meizu/media/camera/ui/menu/ResolutionWindow$2;->this$0:Lcom/meizu/media/camera/ui/menu/ResolutionWindow;

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/ui/menu/ResolutionWindow;->hiddenListView(Z)V

    goto :goto_0
.end method
