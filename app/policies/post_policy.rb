class PostPolicy < ApplicationPolicy
    def show?
        true
    end

    def create?
        # post can only be created by an author role or the post's author
        user.author? 
    end
    
    def update?
        # post can only be updated by an author role or the post's author
        user.author? 
    end
    
    def destroy?
        # a post can only be deleted by its author
        user.author? 
    end

end