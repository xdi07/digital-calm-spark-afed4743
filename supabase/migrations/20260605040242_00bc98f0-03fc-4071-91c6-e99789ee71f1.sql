
-- Fix 1: Restrict login_attempts SELECT to admins only
DROP POLICY IF EXISTS "Authenticated users can view login attempts" ON public.login_attempts;

-- Fix 2: Add explicit restrictive policy on user_roles to prevent self-insert
CREATE POLICY "Only admins can insert roles"
ON public.user_roles
AS RESTRICTIVE
FOR INSERT
TO authenticated
WITH CHECK (private.has_role(auth.uid(), 'admin'::app_role));

CREATE POLICY "Only admins can update roles"
ON public.user_roles
AS RESTRICTIVE
FOR UPDATE
TO authenticated
USING (private.has_role(auth.uid(), 'admin'::app_role))
WITH CHECK (private.has_role(auth.uid(), 'admin'::app_role));

CREATE POLICY "Only admins can delete roles"
ON public.user_roles
AS RESTRICTIVE
FOR DELETE
TO authenticated
USING (private.has_role(auth.uid(), 'admin'::app_role));
