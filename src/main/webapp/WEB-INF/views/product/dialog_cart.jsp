<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!-- Một Session Scope bắt đầu khi một client thành lập kết nối với ứng dụng -->
<!-- web cho tới khi hết thời gian timeout hoặc browser bị đóng. Các giá trị -->
<!-- bên trong session scope có thể được truy cập từ nhiều request khác nhau -->
<!-- của cùng 1 client Một tính năng đáng chú ý của trình duyệt web (browser) -->
<!-- là session được chia sẻ giữa các tab khác nhau. Bạn có thể gửi request -->
<!-- từ 1 tab khác mà không cần login lại. Ví dụ bạn login gmail ở 1 tab, sau -->
<!-- đó bạn sang tab khác vẫn có thể tải mail, gửi mail mà không cần phải -->
<!-- login lại -->
<!--  lấy scopedTarget.cartService trong sesion-->
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />

<!-- Modal -->
<c:forEach var="p" items="${list}">
	<div id="myModals" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title text-center">Thông báo</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div style="padding: 20px 10px 20px 10px; font-size: 16px">
					Bạn đã thêm sản phẩm <b> ${p.name} </b>vào giỏ hàng!
				</div>
				<div class="modal-footer text-center">
					<a style="width: 300px" class="btn btn-primary " href="/cart/view">Xem
						giỏ hàng</a>
					<button
						style="width: 100px; height: 35px; border: 1px solid red; background-color: #C0C0C0"
						type="button" class="btn btn-dark close" data-dismiss="modal">OK</button>
				</div>
			</div>

		</div>
	</div>
</c:forEach>