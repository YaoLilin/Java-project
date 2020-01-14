package mapper;

public interface UserMapper {
	void addUser(User user);
	int updateUser(User user);
	int deleteUser(int id);
	User get();
}
