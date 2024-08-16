<template>
  <div class="content">
    <div class="container">
      <h1>Admin Lists</h1>
      <div class="table-responsive">
        <table class="admin-table">
          <thead>
            <tr>
              <th>#</th>
              <th>Image</th>
              <th>Firstname</th>
              <th>Lastname</th>
              <th>Username</th>
              <th>Role</th>
              <th>Status</th>
              <th>Start Date</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="admin in admins" :key="admin.id">
              <td>{{ admin.id }}</td>
              <td><img :src="admin.image" alt="Admin Image" class="admin-image"></td>
              <td>{{ admin.firstname }}</td>
              <td>{{ admin.lastname }}</td>
              <td>{{ admin.username }}</td>
              <td><span :class="['role', admin.role.toLowerCase()]">{{ admin.role }}</span></td>
              <td><span :class="['status', admin.status.toLowerCase()]">{{ admin.status }}</span></td>
              <td>{{ admin.startDate }}</td>
              <td>
                <button class="edit-btn">Edit</button>
                <button class="delete-btn">Delete</button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AdminHomeComponent',
  data() {
    return {
      admins: [
        { id: 1, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 2, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 3, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 4, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 5, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 6, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
        { id: 7, image: 'path/to/image1.jpg', firstname: 'John', lastname: 'Doe', username: 'johndoe', role: 'Admin', status: 'Active', startDate: '2023-01-01' },
      ]
    };
  }
};
</script>

<style scoped>
 .content {
  width: 100%;
  background-color: #ffffff;
  transition: margin-left 0.3s;
  display: flex;
  flex-direction: column;
  margin-top: 0;
  padding-top: 0;
}

.container {
  padding: 0 3%;
  box-sizing: border-box;
  flex: 1;
}

.table-responsive {
  overflow-x: auto;
}

.admin-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

.admin-table th, .admin-table td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

.admin-table th {
  background-color: #f4f4f4;
}

.admin-image {
  width: 40px;
  height: 40px;
  border-radius: 50%;
}

.role {
  padding: 4px 8px;
  border-radius: 4px;
  color: #fff;
}

.role.admin {
  background-color: #007bff;
}

.role.superadmin {
  background-color: #28a745;
}

.status {
  padding: 4px 8px;
  border-radius: 4px;
  color: #fff;
}

.status.active {
  background-color: #28a745;
}

.edit-btn, .delete-btn {
  padding: 4px 8px;
  border: none;
  border-radius: 4px;
  color: #fff;
  cursor: pointer;
}

.edit-btn {
  background-color: #ffc107;
}

.delete-btn {
  background-color: #dc3545;
}

@media only screen and (max-width: 600px) {
  .content {
    margin-left: 15px;
    background-color: #ffffff;
  }

  .admin-table th, .admin-table td {
    padding: 8px;
  }

  .edit-btn, .delete-btn {
    padding: 4px 8px;
    font-size: 0.75em;
  }
}
</style>
